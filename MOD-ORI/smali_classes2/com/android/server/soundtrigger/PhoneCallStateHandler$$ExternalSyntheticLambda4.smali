.class public final synthetic Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 4
    .line 5
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->isCallOngoingFromState(I)Z

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0

    .line 34
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->isCallOngoingFromState(I)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
