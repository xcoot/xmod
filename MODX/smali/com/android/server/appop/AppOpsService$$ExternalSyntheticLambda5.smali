.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/appop/AppOpsService;

    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 13
    move-result p0

    .line 14
    check-cast p3, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p2

    .line 20
    check-cast p4, Ljava/lang/Integer;

    .line 22
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result p3

    .line 26
    sget-boolean p4, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 28
    invoke-virtual {p1, p0, p3, p2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUserForDefaultDevice(IIZ)V

    .line 31
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result p0

    .line 36
    check-cast p3, Ljava/lang/Boolean;

    .line 38
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    move-result p2

    .line 42
    check-cast p4, Ljava/lang/Integer;

    .line 44
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result p3

    .line 48
    invoke-virtual {p1, p0, p3, p2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUserForDefaultDevice(IIZ)V

    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
