// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Feb 26 20:27:39 2023
// Host        : ubuntu22 running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hs/onPureRV32/work/onePureRV32/onePureRV32.gen/sources_1/ip/ram/ram_sim_netlist.v
// Design      : ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ram
   (clka,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.104501 mW" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram.mem" *) 
  (* C_INIT_FILE_NAME = "ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29936)
`pragma protect data_block
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
Bzu1JWbN0RxxRT0=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
