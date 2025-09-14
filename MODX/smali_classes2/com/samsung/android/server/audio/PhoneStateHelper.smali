.class public final Lcom/samsung/android/server/audio/PhoneStateHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;


# instance fields
.field public mIs2GTDMANetwork:Z

.field public mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field public mRilState:I

.field public mSimCount:I

.field public mSpecifiedTm:[Landroid/telephony/TelephonyManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    .line 11
    .line 12
    const-string/jumbo v0, "phone"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final registerPhoneStateListener()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    .line 8
    .line 9
    const-string v1, "AS.PhoneStateHelper"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p0, "do not register PhoneStateListener on NO_SIM state"

    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-array v2, v0, [Landroid/telephony/PhoneStateListener;

    .line 20
    .line 21
    iput-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 22
    .line 23
    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    move v2, v0

    .line 29
    :goto_0
    iget v3, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    .line 30
    .line 31
    if-ge v2, v3, :cond_2

    .line 32
    .line 33
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    array-length v4, v3

    .line 40
    if-lez v4, :cond_1

    .line 41
    .line 42
    aget v3, v3, v0

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v5, "registerPhoneStateListener mSimCount: "

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v5, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, " , subId: "

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 73
    .line 74
    new-instance v5, Lcom/samsung/android/server/audio/PhoneStateHelper$1;

    .line 75
    .line 76
    invoke-direct {v5, p0}, Lcom/samsung/android/server/audio/PhoneStateHelper$1;-><init>(Lcom/samsung/android/server/audio/PhoneStateHelper;)V

    .line 77
    .line 78
    .line 79
    aput-object v5, v4, v2

    .line 80
    .line 81
    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    .line 82
    .line 83
    iget-object v5, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 84
    .line 85
    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    aput-object v3, v4, v2

    .line 90
    .line 91
    iget-object v3, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    .line 92
    .line 93
    aget-object v3, v3, v2

    .line 94
    .line 95
    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 96
    .line 97
    aget-object v4, v4, v2

    .line 98
    .line 99
    const/16 v5, 0x21

    .line 100
    .line 101
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 102
    .line 103
    .line 104
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    return-void
.end method
