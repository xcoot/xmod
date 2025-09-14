.class public final synthetic Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Landroid/os/IBinder;

    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v2

    .line 20
    check-cast p3, Ljava/lang/Integer;

    .line 22
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v3

    .line 26
    move-object v4, p4

    .line 27
    check-cast v4, Ljava/lang/String;

    .line 29
    move-object v5, p5

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 32
    check-cast p6, Ljava/lang/Integer;

    .line 34
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v6

    .line 38
    invoke-static/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void

    .line 42
    :pswitch_0
    check-cast p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 44
    move-object v1, p1

    .line 45
    check-cast v1, Landroid/os/IBinder;

    .line 47
    check-cast p2, Ljava/lang/Integer;

    .line 49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v2

    .line 53
    check-cast p3, Ljava/lang/Integer;

    .line 55
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v3

    .line 59
    move-object v4, p4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 62
    move-object v5, p5

    .line 63
    check-cast v5, Ljava/lang/String;

    .line 65
    check-cast p6, Ljava/lang/Integer;

    .line 67
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v6

    .line 71
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 73
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;

    .line 75
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 77
    const/4 p1, 0x1

    .line 78
    invoke-direct {v7, p1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 81
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V

    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
