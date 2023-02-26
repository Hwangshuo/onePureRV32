// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Feb 26 20:27:38 2023
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
