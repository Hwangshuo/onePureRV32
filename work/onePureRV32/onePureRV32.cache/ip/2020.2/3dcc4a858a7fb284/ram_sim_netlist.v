// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Feb 24 19:49:09 2023
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
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.119075 mW" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_MEM_TYPE = "0" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29728)
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
