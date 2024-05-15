# Peripheral Component Interconnect Express(PCie)
利用 Xilinx 提供的IP Core讓FPGA可以用PCie介面傳輸資料

## XDMA IP CORE
此IP內含DMA模塊，讓FPGA可以透過ARM/MCU來控制資料傳輸

![Image text]()

### Blcok Diagram
透過Vivado提供的Block Design來完成設計

XDMA IP 可以讓Host PC使用PCie介面與FPGA上的儲存空間傳輸資料

![Image text]() ![Image text]()

### XDMA Driver
利用Xilinx提供的PCie Driver來讀寫FPGA

```
$ lspci                                                                                  
...                                                             # Other PCI Device        
01:00.0 Memory controller: Xilinx Corporation Device 7021       # Xilinx PCIe-XDMA Device
...                                                             # Other PCI Device       

$ cd xdma
$ sudo make install
$ cd tools
$ sudo mak
$ sudo modprobe xdma
$ ./load_driver.sh                                                                                  
$ ./run_test.sh

```

## Versal PCie Gen5 Demo
藉由Versal器件獨有的硬核CPM來達到Gen5的傳輸速度

![Image text]() ![Image text]()

### Example Design
利用Xilinx提供的Example Design來建構

![Image text]()

### QDMA Driver
利用Xilinx提供的PCie Driver來讀寫FPGA

安裝必需的依賴庫及套件
```
$ sudo –s 						
$ apt-get update 						
$ apt-get install build-essential 				
$ apt-get install libaio-dev
```
編譯XDMA Driver
```
$ unzip dma_ip_drivers-master.zip 				        
$ cd dma_ip_drivers-master/QDMA/linux-kernel 			
$ make clean 						
$ make 							                              
$ make install 						                        
$ sudo reboot
```
確認是否有辨識到裝置
```
$ sudo –s 						                            
$ lspci –vvd:b03f 						                    
```
利用script生成對應的設定檔
```
$ dma_ip_drivers-master/QDMA/linux-kernel 			
$ cd scripts ; chmod 0755 *.sh 				
$ ./qdma_generate_conf_file.sh 0x86 1 1 0 			 
$ cd ..
```
加載驅動
```
$ modprobe qdma-pf 					                      
$ lspci –vvd:b03f 						                    
```
利用Xilinx提供的測試app來測試PCie的傳輸速度
```
$ echo 8 > /sys/bus/pci/devices/0000\:86\:00.0/qdma/qmax 	
$ dma-ctl qdma86000 q add idx 0 dir bi 			
$ dma-ctl qdma86000 q start idx 0 dir bi 			
$ dma-to-device –d /dev/qdma86000-MM-0 –s 32 			
$ dma-from-device –d /dev/qdma86000-MM-0 –s 32 		
$ dma-ctl qdma86000 q stop idx 0 dir bi 			
$ dma-ctl qdma86000 q del idx 0 dir bi 			
```
