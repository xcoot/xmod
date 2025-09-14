.class public final synthetic Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 p1, -0x1

    .line 13
    if-eq p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0

    .line 19
    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 p1, -0x1

    .line 24
    if-eq p0, p1, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_1
    return p0

    .line 30
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 p1, -0x1

    .line 35
    if-eq p0, p1, :cond_2

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 p0, 0x0

    .line 40
    :goto_2
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
