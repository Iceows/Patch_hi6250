.class public Lcom/android/supl/nc/SSLX509TrustManager;
.super Ljava/lang/Object;
.source "SSLX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final LOG:Ljava/lang/String; = "SUPL20_TrustManager"


# instance fields
.field private allx509TrustManager:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private factories:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljavax/net/ssl/TrustManagerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fqdn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p2, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .local p1, "keystoreList":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v5, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    .line 67
    iput-object v5, p0, Lcom/android/supl/nc/SSLX509TrustManager;->factories:Ljava/util/Vector;

    .line 69
    iput-object v5, p0, Lcom/android/supl/nc/SSLX509TrustManager;->fqdn:Ljava/lang/String;

    .line 77
    if-nez p2, :cond_0

    .line 78
    const-string/jumbo v0, "fqdn == null"

    .line 79
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v3, "SUPL20_TrustManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/android/supl/nc/SSLX509TrustManager;->fqdn:Ljava/lang/String;

    .line 83
    new-instance v3, Ljava/util/Vector;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    .line 85
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/android/supl/nc/SSLX509TrustManager;->addKeyStore(Ljava/security/KeyStore;Z)V

    .line 95
    iget-object v3, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    const-string/jumbo v0, "No Trust Manager Found"

    .line 97
    .restart local v0    # "error":Ljava/lang/String;
    const-string/jumbo v3, "SUPL20_TrustManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v3, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "keystore$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore;

    .line 88
    .local v1, "keystore":Ljava/security/KeyStore;
    invoke-virtual {p0, v1, v6}, Lcom/android/supl/nc/SSLX509TrustManager;->addKeyStore(Ljava/security/KeyStore;Z)V

    goto :goto_0

    .line 100
    .end local v1    # "keystore":Ljava/security/KeyStore;
    .end local v2    # "keystore$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v3, "SUPL20_TrustManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Trust Managers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method private splitByIssuers([Ljava/security/cert/X509Certificate;)Ljava/util/Vector;
    .locals 10
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Vector",
            "<[",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/util/Vector;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/Vector;-><init>(I)V

    .line 221
    .local v0, "certificates":Ljava/util/Vector;, "Ljava/util/Vector<[Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x0

    .line 222
    .local v4, "isMatch":Z
    const/4 v2, 0x0

    .line 223
    .local v2, "iMatchIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_4

    .line 224
    if-nez v4, :cond_0

    .line 225
    move v2, v1

    .line 227
    :cond_0
    aget-object v7, p1, v1

    .line 228
    .local v7, "xcPre":Ljava/security/cert/X509Certificate;
    add-int/lit8 v3, v1, 0x1

    .line 229
    .local v3, "iNextIndex":I
    const/4 v6, 0x0

    .line 230
    .local v6, "xcNext":Ljava/security/cert/X509Certificate;
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    if-eq v1, v8, :cond_1

    .line 231
    aget-object v6, p1, v3

    .line 233
    .end local v6    # "xcNext":Ljava/security/cert/X509Certificate;
    :cond_1
    if-eqz v6, :cond_3

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 234
    const/4 v4, 0x1

    .line 238
    :goto_1
    if-nez v4, :cond_2

    .line 239
    sub-int v8, v1, v2

    add-int/lit8 v8, v8, 0x1

    new-array v5, v8, [Ljava/security/cert/X509Certificate;

    .line 240
    .local v5, "newChain":[Ljava/security/cert/X509Certificate;
    array-length v8, v5

    const/4 v9, 0x0

    invoke-static {p1, v2, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v5    # "newChain":[Ljava/security/cert/X509Certificate;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 245
    .end local v3    # "iNextIndex":I
    .end local v7    # "xcPre":Ljava/security/cert/X509Certificate;
    :cond_4
    return-object v0
.end method


# virtual methods
.method public addKeyStore(Ljava/security/KeyStore;Z)V
    .locals 13
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "bIsPrintCerts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 106
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v2, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 108
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    const/4 v4, 0x0

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    .line 109
    .local v1, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v4, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v4, :cond_0

    .line 108
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 112
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .line 113
    .local v3, "xtm":Ljavax/net/ssl/X509TrustManager;
    iget-object v4, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 114
    if-eqz p2, :cond_1

    .line 115
    const-string/jumbo v4, "SUPL20_TrustManager"

    const-string/jumbo v8, "Added new Trust Manager. It contains the following Accepted Issuer Certificates:"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-interface {v3}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v8

    const/4 v4, 0x0

    array-length v9, v8

    :goto_2
    if-ge v4, v9, :cond_1

    aget-object v0, v8, v4

    .line 117
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const-string/jumbo v10, "SUPL20_TrustManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Certificate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 120
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    const-string/jumbo v4, "SUPL20_TrustManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Number of accepted issuers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    .end local v1    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v3    # "xtm":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 15
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v12, v0

    if-nez v12, :cond_1

    .line 140
    :cond_0
    const-string/jumbo v6, "Server didn\'t provide any certificate"

    .line 141
    .local v6, "error":Ljava/lang/String;
    const-string/jumbo v12, "SUPL20_TrustManager"

    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v12, Ljava/security/cert/CertificateException;

    invoke-direct {v12, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 153
    .end local v6    # "error":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v12, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v12}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iget-object v13, p0, Lcom/android/supl/nc/SSLX509TrustManager;->fqdn:Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v12, v13, v14}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v2, 0x0

    .line 165
    .local v2, "ce":Ljava/security/cert/CertificateException;
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    .line 166
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/nc/SSLX509TrustManager;->splitByIssuers([Ljava/security/cert/X509Certificate;)Ljava/util/Vector;

    move-result-object v9

    .line 172
    .local v9, "vecChains":Ljava/util/Vector;, "Ljava/util/Vector<[Ljava/security/cert/X509Certificate;>;"
    :goto_0
    const/4 v1, 0x0

    .line 173
    .local v1, "bIsChainValid":Z
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .local v11, "x509CertificatesChain$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/security/cert/X509Certificate;

    .line 174
    .local v10, "x509CertificatesChain":[Ljava/security/cert/X509Certificate;
    iget-object v12, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "tm$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/X509TrustManager;

    .line 176
    .local v7, "tm":Ljavax/net/ssl/X509TrustManager;
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v7, v10, v0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    const/4 v1, 0x1

    .line 184
    .end local v7    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_3
    if-eqz v1, :cond_2

    .line 189
    .end local v8    # "tm$iterator":Ljava/util/Iterator;
    .end local v10    # "x509CertificatesChain":[Ljava/security/cert/X509Certificate;
    :cond_4
    if-nez v1, :cond_6

    .line 190
    const-string/jumbo v12, "SUPL20_TrustManager"

    const-string/jumbo v13, "Couldn\'t find trusted anchor for certificate chain"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    throw v2

    .line 156
    .end local v1    # "bIsChainValid":Z
    .end local v9    # "vecChains":Ljava/util/Vector;, "Ljava/util/Vector<[Ljava/security/cert/X509Certificate;>;"
    .end local v11    # "x509CertificatesChain$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 157
    .local v5, "e":Ljavax/net/ssl/SSLException;
    const-string/jumbo v12, "SUPL20_TrustManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Certificate SubjectDN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    invoke-interface {v14}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string/jumbo v12, "SUPL20_TrustManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "But trying to connect to FQDN: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/supl/nc/SSLX509TrustManager;->fqdn:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v12, Ljava/security/cert/CertificateException;

    invoke-direct {v12, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 168
    .end local v5    # "e":Ljavax/net/ssl/SSLException;
    .restart local v2    # "ce":Ljava/security/cert/CertificateException;
    :cond_5
    new-instance v9, Ljava/util/Vector;

    const/4 v12, 0x1

    invoke-direct {v9, v12}, Ljava/util/Vector;-><init>(I)V

    .line 169
    .restart local v9    # "vecChains":Ljava/util/Vector;, "Ljava/util/Vector<[Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 179
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "bIsChainValid":Z
    .restart local v7    # "tm":Ljavax/net/ssl/X509TrustManager;
    .restart local v8    # "tm$iterator":Ljava/util/Iterator;
    .restart local v10    # "x509CertificatesChain":[Ljava/security/cert/X509Certificate;
    .restart local v11    # "x509CertificatesChain$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 181
    .local v4, "e":Ljava/security/cert/CertificateException;
    move-object v2, v4

    .local v2, "ce":Ljava/security/cert/CertificateException;
    goto :goto_1

    .line 196
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    .end local v7    # "tm":Ljavax/net/ssl/X509TrustManager;
    .end local v8    # "tm$iterator":Ljava/util/Iterator;
    .end local v10    # "x509CertificatesChain":[Ljava/security/cert/X509Certificate;
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    :goto_2
    if-ge v12, v13, :cond_7

    aget-object v3, p1, v12

    .line 198
    .local v3, "certificate":Ljava/security/cert/X509Certificate;
    :try_start_2
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 199
    :catch_2
    move-exception v4

    .line 200
    .restart local v4    # "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v12, "SUPL20_TrustManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "The following certificate in the chain is invalid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    throw v4

    .line 138
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :cond_7
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 4

    .prologue
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "certificateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    iget-object v3, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 212
    .local v1, "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 214
    .end local v1    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/X509Certificate;

    return-object v3
.end method
