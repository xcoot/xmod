.class public final synthetic Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/OctFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 9
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Ljava/lang/Integer;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result v1

    .line 18
    move-object v2, p2

    .line 19
    check-cast v2, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v2

    .line 25
    move-object v3, p3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 28
    move-object/from16 v4, p4

    .line 30
    check-cast v4, Ljava/lang/String;

    .line 32
    move-object/from16 v5, p5

    .line 34
    check-cast v5, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v5

    .line 40
    move-object/from16 v6, p6

    .line 42
    check-cast v6, Ljava/lang/Boolean;

    .line 44
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    move-result v6

    .line 48
    move-object/from16 v7, p7

    .line 50
    check-cast v7, Ljava/lang/String;

    .line 52
    move-object/from16 v8, p8

    .line 54
    check-cast v8, Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    move-result v8

    .line 60
    move-object p0, v0

    .line 61
    move p1, v1

    .line 62
    move p2, v2

    .line 63
    move-object p3, v3

    .line 64
    move-object/from16 p4, v4

    .line 66
    move/from16 p5, v5

    .line 68
    move/from16 p6, v6

    .line 70
    move-object/from16 p7, v7

    .line 72
    move/from16 p8, v8

    .line 74
    invoke-static/range {p0 .. p8}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :pswitch_0
    check-cast v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 81
    move-object v1, p1

    .line 82
    check-cast v1, Ljava/lang/Integer;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v3

    .line 88
    move-object v1, p2

    .line 89
    check-cast v1, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 94
    move-result v4

    .line 95
    move-object v5, p3

    .line 96
    check-cast v5, Ljava/lang/String;

    .line 98
    move-object/from16 v6, p4

    .line 100
    check-cast v6, Ljava/lang/String;

    .line 102
    move-object/from16 v1, p5

    .line 104
    check-cast v1, Ljava/lang/Integer;

    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result v7

    .line 110
    move-object/from16 v1, p6

    .line 112
    check-cast v1, Ljava/lang/Boolean;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    move-result v8

    .line 118
    move-object/from16 v9, p7

    .line 120
    check-cast v9, Ljava/lang/String;

    .line 122
    move-object/from16 v1, p8

    .line 124
    check-cast v1, Ljava/lang/Boolean;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    move-result v10

    .line 130
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 132
    new-instance v11, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;

    .line 134
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 136
    const/4 v1, 0x1

    .line 137
    invoke-direct {v11, v1, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 140
    invoke-interface/range {v2 .. v11}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/android/internal/util/function/OctFunction;)Landroid/app/SyncNotedAppOp;

    .line 143
    move-result-object v0

    .line 144
    return-object v0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
