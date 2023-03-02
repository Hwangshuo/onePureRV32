// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Feb 27 11:53:18 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30736)
`pragma protect data_block
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
T3cthftHQRfjbgMLAg==
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
