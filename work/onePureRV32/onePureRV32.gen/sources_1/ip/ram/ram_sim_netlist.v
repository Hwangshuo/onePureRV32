// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Feb 27 17:35:13 2023
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
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
  wire [3:0]wea;
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
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.222543 mW" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30576)
`pragma protect data_block
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
fgZfNkJ4gIgcq9lljHZfYvVz0LMrBWow
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
