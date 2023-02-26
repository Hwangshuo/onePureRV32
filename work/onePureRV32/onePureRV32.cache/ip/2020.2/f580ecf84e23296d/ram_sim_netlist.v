// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Feb 24 13:46:18 2023
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
