.class public Lcom/android/supl/config/NetworkConnectionParam;
.super Ljava/lang/Object;
.source "NetworkConnectionParam.java"


# instance fields
.field public m_iConnectionRetries:I

.field public m_iConnectionTimeOut:I

.field public m_iPCMPort:I

.field public m_iSCMPort:I

.field public m_sPCMUnixSocPath:Ljava/lang/String;

.field public m_sSCMUnixSocPath:Ljava/lang/String;

.field public m_stPCMFQDN:Ljava/lang/String;

.field public m_stSCMFQDN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    .line 40
    const/16 v0, 0x2329

    iput v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    .line 41
    const-string/jumbo v0, "127.0.0.1"

    iput-object v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    .line 42
    const/16 v0, 0x232a

    iput v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    .line 43
    const-string/jumbo v0, "127.0.0.1"

    iput-object v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "/data/gnss/pcm_soc"

    iput-object v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_sPCMUnixSocPath:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "/data/gnss/scm_soc"

    iput-object v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_sSCMUnixSocPath:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConnectionTimeOut :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "ConnectionRetries:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    iget v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "\n"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "PCMPort:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    iget v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "\n"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "PCMFQDN:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "\n"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "SCMPort:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    iget v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "\n"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "SCMFQDN:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "\n"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "PCMUnixSocPath:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_sPCMUnixSocPath:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "\n"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "SCMUnixSocPath:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_sSCMUnixSocPath:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "\n"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
