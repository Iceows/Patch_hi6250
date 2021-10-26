.class public Lcom/android/supl/trigger/PeriodicTriggerHandler;
.super Ljava/lang/Object;
.source "PeriodicTriggerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_Trigger"

.field public static final MSG_PCM_ON_ERROR_TRIGGER_PERIODIC:I = 0x110

.field public static final MSG_PCM_ON_TRIGGER_PERIODIC:I = 0x10c

.field public static final MSG_PCM_START_TRIGGER_PERIODIC:I = 0x104

.field public static final MSG_PCM_STOP_TRIGGER_PERIODIC:I = 0x105

.field private static final PERIODIC_TRIGGER_ERROR_CODE_CANT_SET_TRIGGER:I = 0x1

.field private static final PERIODIC_TRIGGER_ERROR_CODE_OTHER:I = 0x2

.field private static final PERIODIC_TRIGGER_ERROR_CODE_TRIGGER_NOT_AVAILABLE:I

.field private static sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;


# instance fields
.field private hsTrigger:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;",
            ">;"
        }
    .end annotation
.end field

.field private mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;


# direct methods
.method static synthetic -get0(Lcom/android/supl/trigger/PeriodicTriggerHandler;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/supl/trigger/PeriodicTriggerHandler;IS)Ljava/lang/String;
    .registers 4
    .param p1, "sSessionID"    # I
    .param p2, "m_ucTriggerId"    # S

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->makeKey(IS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    .line 73
    iput-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method public static getInstance()Lcom/android/supl/trigger/PeriodicTriggerHandler;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    if-nez v0, :cond_b

    .line 87
    new-instance v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;

    invoke-direct {v0}, Lcom/android/supl/trigger/PeriodicTriggerHandler;-><init>()V

    sput-object v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 89
    :cond_b
    sget-object v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    return-object v0
.end method

.method private makeKey(IS)Ljava/lang/String;
    .registers 5
    .param p1, "sSessionID"    # I
    .param p2, "m_ucTriggerId"    # S

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 193
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public OnErrorTriggerPeriodic(III)V
    .registers 11
    .param p1, "m_usSessionId"    # I
    .param p2, "m_ucTriggerId"    # I
    .param p3, "iErrorCode"    # I

    .prologue
    .line 173
    const/16 v2, 0xb

    .line 175
    .local v2, "iSize":I
    const/16 v4, 0xf

    new-array v0, v4, [B

    .line 176
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 177
    .local v1, "iOffset":I
    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 178
    const/16 v4, 0x110

    invoke-static {v0, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 179
    invoke-static {v0, v1, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 180
    invoke-static {v0, v1, p2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 181
    invoke-static {v0, v1, p3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 182
    add-int/lit8 v4, v1, -0x4

    .line 173
    const/16 v5, 0xb

    .line 182
    if-eq v4, v5, :cond_2b

    .line 183
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "OnErrorTriggerPeriodic length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    :cond_2b
    const-string/jumbo v4, "SUPL20_Trigger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OnErrorTriggerPeriodic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 187
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object v0, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 188
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v4, v3}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 172
    return-void
.end method

.method public clear()V
    .registers 6

    .prologue
    .line 250
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 251
    .local v0, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "stSessionTriggerID$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    .local v2, "stSessionTriggerID":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    .line 253
    .local v1, "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    invoke-virtual {v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->stopTrigger()V

    goto :goto_a

    .line 255
    .end local v1    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    .end local v2    # "stSessionTriggerID":Ljava/lang/String;
    :cond_22
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 257
    const/4 v4, 0x0

    sput-object v4, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 249
    return-void
.end method

.method public pause()V
    .registers 6

    .prologue
    .line 260
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 261
    .local v0, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "stSessionTriggerID$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "stSessionTriggerID":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    .line 263
    .local v1, "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    invoke-virtual {v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->stopTrigger()V

    goto :goto_a

    .line 265
    .end local v1    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    .end local v2    # "stSessionTriggerID":Ljava/lang/String;
    :cond_22
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 259
    return-void
.end method

.method public sendOnTriggerPeriodic(III)V
    .registers 10
    .param p1, "m_usSessionId"    # I
    .param p2, "m_nTriggerId"    # I
    .param p3, "m_unTime"    # I

    .prologue
    .line 155
    const/16 v2, 0xb

    .line 157
    .local v2, "iSize":I
    const/16 v4, 0xf

    new-array v0, v4, [B

    .line 158
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 159
    .local v1, "iOffset":I
    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 160
    const/16 v4, 0x10c

    invoke-static {v0, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 161
    invoke-static {v0, v1, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 162
    invoke-static {v0, v1, p2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 163
    invoke-static {v0, v1, p3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 164
    add-int/lit8 v4, v1, -0x4

    .line 155
    const/16 v5, 0xb

    .line 164
    if-eq v4, v5, :cond_2b

    .line 165
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "sendOnTriggerPeriodic length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    :cond_2b
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 168
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object v0, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 169
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v4, v3}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 153
    return-void
.end method

.method public setNdkCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .registers 2
    .param p1, "ndkCommProcessor"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 95
    return-void
.end method

.method public startTriggerPeriodic(Ljava/io/DataInputStream;)Z
    .registers 11
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v7, 0x0

    .line 104
    .local v7, "isReadSuccess":Z
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 106
    .local v2, "m_usSessionId":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    int-to-short v5, v1

    .line 108
    .local v5, "m_ucTriggerId":S
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 110
    .local v3, "m_unPeriod":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 111
    .local v6, "m_unTriggers":I
    invoke-direct {p0, v2, v5}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->makeKey(IS)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "stKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    .line 113
    .local v0, "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    if-eqz v0, :cond_22

    if-lez v3, :cond_30

    .line 114
    :cond_22
    new-instance v0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    .end local v0    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;-><init>(Lcom/android/supl/trigger/PeriodicTriggerHandler;IIISI)V

    .line 116
    .restart local v0    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_2e
    const/4 v7, 0x1

    .line 123
    return v7

    .line 118
    :cond_30
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v5, v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->OnErrorTriggerPeriodic(III)V

    goto :goto_2e
.end method

.method public stopTriggerPeriodic(Ljava/io/DataInputStream;)Z
    .registers 9
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 132
    .local v0, "isReadSuccess":Z
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 134
    .local v2, "m_usSessionId":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    int-to-short v1, v5

    .line 136
    .local v1, "m_ucTriggerId":S
    invoke-direct {p0, v2, v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->makeKey(IS)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "stKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    .line 139
    .local v3, "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    if-nez v3, :cond_27

    .line 140
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v1, v5}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->OnErrorTriggerPeriodic(III)V

    .line 141
    const-string/jumbo v5, "SUPL20_Trigger"

    const-string/jumbo v6, "stopTriggerPeriodic invalid session id or trigger id"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v3    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    :goto_25
    const/4 v0, 0x1

    .line 149
    return v0

    .line 143
    .restart local v3    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    :cond_27
    invoke-virtual {v3}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->stopTrigger()V

    .line 144
    iget-object v5, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v3, 0x0

    .local v3, "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    goto :goto_25
.end method
