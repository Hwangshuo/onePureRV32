// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Feb 26 14:54:18 2023
// Host        : ubuntu22 running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_sim_netlist.v
// Design      : ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30080)
`pragma protect data_block
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
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
