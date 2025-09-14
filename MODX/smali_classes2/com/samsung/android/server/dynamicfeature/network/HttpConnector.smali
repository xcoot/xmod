.class public final Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static isStopped:I = 0x0

.field public static server_url:Ljava/lang/String; = "https://dynamicfeature.dvc.samsung.com/dynamic-feature/"


# instance fields
.field public mBinaryType:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mFeatures:Ljava/util/ArrayList;

.field public mLastResultCode:I

.field public mModelName:Ljava/lang/String;

.field public mOneUiVersion:Ljava/lang/String;

.field public mSdkVersion:I

.field public updateHandler:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 3
    .line 4
    return-void
.end method

.method public static getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    const-string v0, "POST"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "Content-type"

    .line 18
    .line 19
    const-string v1, "application/json; utf-8"

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "Accept"

    .line 25
    .line 26
    const-string v1, "application/json"

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public getLastReultCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mLastResultCode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getParams(Z)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "phone"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x4

    .line 21
    const-string v3, ""

    .line 22
    .line 23
    if-le v1, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v4, 0x3

    .line 31
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v0, v3

    .line 45
    move-object v1, v0

    .line 46
    :goto_0
    const-string/jumbo v2, "ro.csc.sales_code"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v7, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mOneUiVersion:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v8, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mBinaryType:Ljava/lang/String;

    .line 56
    .line 57
    iget v9, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mSdkVersion:I

    .line 58
    .line 59
    move-object v4, v1

    .line 60
    move-object v5, v0

    .line 61
    move-object v6, v2

    .line 62
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    const-string v3, "?mcc="

    .line 66
    .line 67
    const-string v4, "&mnc="

    .line 68
    .line 69
    const-string v5, "&modelName="

    .line 70
    .line 71
    invoke-static {v3, v1, v4, v0, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mModelName:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, "&csc="

    .line 78
    .line 79
    const-string v4, "&sdkVersion="

    .line 80
    .line 81
    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mSdkVersion:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, "&oneUiVersion="

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mOneUiVersion:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, "&binaryType="

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mBinaryType:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    const-string p1, "&virtualId="

    .line 116
    .line 117
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    sget-object p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    :cond_1
    return-object p0
.end method
