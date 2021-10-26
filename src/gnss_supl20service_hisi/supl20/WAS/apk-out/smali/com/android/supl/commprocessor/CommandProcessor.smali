.class public interface abstract Lcom/android/supl/commprocessor/CommandProcessor;
.super Ljava/lang/Object;
.source "CommandProcessor.java"


# static fields
.field public static final BYE_MSG_LEN:I = 0x8

.field public static final BYTE_SIZE:I = 0x1

.field public static final CANT_RESOLVE_FQDN:I = 0x0

.field public static final CLIENT_NOT_AUTHENTICATED:I = 0x3

.field public static final CONNECTION_ERROR_CODE_CANT_RESOLVE_FQDN:I = 0x0

.field public static final CONNECTION_ERROR_CODE_CLIENT_NOT_AUTHENTICATED:I = 0x3

.field public static final CONNECTION_ERROR_CODE_CONNECTION_FAILURE:I = 0x1

.field public static final CONNECTION_ERROR_CODE_NO_NETWORK:I = 0x5

.field public static final CONNECTION_ERROR_CODE_SERVER_NOT_AUTHENTICATED:I = 0x2

.field public static final CONNECTION_ERROR_CODE_TLS_ERROR:I = 0x4

.field public static final CONNECTION_FAILURE:I = 0x1

.field public static final CONNECT_MSG_LEN:I = 0x8

.field public static final HELLO_MSG_LEN:I = 0x8

.field public static final INT_SIZE:I = 0x4

.field public static final LONG_SIZE:I = 0x8

.field public static final MSG_CODE_LEN:I = 0x4

.field public static final MSG_COMMON_ALIVE:I = 0x300

.field public static final NW_SEESSIONID_LEN:I = 0x1

.field public static final ON_COMM_INTERFACE_STATUS_CHANGE_MSG_LEN:I = 0x8

.field public static final ON_NOT_CONNECT_MSG_LEN:I = 0xb

.field public static final ON_NW_SESSION_CLOSED_MSG_LEN:I = 0x9

.field public static final PACKET_LEN:I = 0x4

.field public static final REC_BUFF_LEN:I = 0x4

.field public static final REQ_ID_LEN:I = 0x1

.field public static final SERVER_NOT_AUTHENTICATED:I = 0x2

.field public static final SHORT_SIZE:I = 0x2


# virtual methods
.method public abstract init()Z
.end method

.method public abstract process(Lcom/android/supl/commprocessor/FromServer;)V
.end method

.method public abstract sendByeMessage()V
.end method

.method public abstract sendHelloMessage()V
.end method

.method public abstract writePacket(Lcom/android/supl/commprocessor/FromServer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method
