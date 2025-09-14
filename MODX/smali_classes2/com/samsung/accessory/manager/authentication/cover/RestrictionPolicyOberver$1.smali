.class public final Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p2, "SAccessoryManager_RestrictionPolicyOberver"

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v1, "NfcAdapter.getDefaultAdapter returns null"

    .line 22
    .line 23
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string/jumbo p0, "retry, NfcAdapter.getDefaultAdapter returns null"

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    const-string p0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 p2, 0x1

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const/4 p1, 0x4

    .line 61
    if-eq p0, p1, :cond_1

    .line 62
    .line 63
    if-ne p0, p2, :cond_3

    .line 64
    .line 65
    :cond_1
    const/4 p0, 0x0

    .line 66
    sput-boolean p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string p0, "com.samsung.android.nfc.INIT_READY"

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    sget-boolean p1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    .line 84
    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    const/4 p1, 0x3

    .line 88
    if-ne p0, p1, :cond_3

    .line 89
    .line 90
    sput-boolean p2, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    .line 91
    .line 92
    sget-object p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    .line 93
    .line 94
    if-eqz p0, :cond_3

    .line 95
    .line 96
    check-cast p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 97
    .line 98
    const-string/jumbo p1, "onNfcRestrictionPolicyChanged = true"

    .line 99
    .line 100
    .line 101
    const-string p2, "SAccessoryManager_CoverAuthenticator"

    .line 102
    .line 103
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_1
    return-void
.end method
