// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Feb 26 14:54:19 2023
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
MO9viv0a7KJVlzE=
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
