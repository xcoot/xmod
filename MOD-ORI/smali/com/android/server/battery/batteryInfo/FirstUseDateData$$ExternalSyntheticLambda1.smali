.class public final synthetic Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 9
    .line 10
    aget-boolean p0, p0, p1

    .line 11
    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 14
    .line 15
    aget-boolean p0, p0, p1

    .line 16
    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
