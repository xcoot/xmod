.class public final synthetic Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/HexFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v2, p2

    .line 15
    check-cast v2, Landroid/content/AttributionSource;

    .line 16
    .line 17
    check-cast p3, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    move-object v4, p4

    .line 24
    check-cast v4, Ljava/lang/String;

    .line 25
    .line 26
    check-cast p5, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    check-cast p6, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 39
    .line 40
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-direct {v7, p0, p1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 46
    .line 47
    .line 48
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    move-object v3, p3

    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    move-object v4, p4

    .line 63
    check-cast v4, Ljava/lang/String;

    .line 64
    .line 65
    check-cast p5, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    check-cast p6, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 78
    .line 79
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-direct {v7, p0, p1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 85
    .line 86
    .line 87
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
