.class public final synthetic Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuadFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Landroid/os/IBinder;

    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p2

    .line 16
    check-cast p3, Landroid/content/AttributionSource;

    .line 18
    check-cast p4, Ljava/lang/Boolean;

    .line 20
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result p4

    .line 24
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result p1

    .line 35
    check-cast p2, Ljava/lang/Integer;

    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result p2

    .line 41
    check-cast p3, Ljava/lang/Integer;

    .line 43
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result p3

    .line 47
    check-cast p4, Ljava/lang/String;

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    .line 52
    move-result p0

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
