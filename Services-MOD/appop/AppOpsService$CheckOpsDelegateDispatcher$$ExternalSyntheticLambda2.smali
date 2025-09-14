.class public final synthetic Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/UndecFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 9
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 11
    move-object/from16 v1, p1

    .line 13
    check-cast v1, Landroid/os/IBinder;

    .line 15
    move-object/from16 v2, p2

    .line 17
    check-cast v2, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v2

    .line 23
    move-object/from16 v3, p3

    .line 25
    check-cast v3, Landroid/content/AttributionSource;

    .line 27
    move-object/from16 v4, p4

    .line 29
    check-cast v4, Ljava/lang/Boolean;

    .line 31
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result v4

    .line 35
    move-object/from16 v5, p5

    .line 37
    check-cast v5, Ljava/lang/Boolean;

    .line 39
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    move-result v5

    .line 43
    move-object/from16 v6, p6

    .line 45
    check-cast v6, Ljava/lang/String;

    .line 47
    move-object/from16 v7, p7

    .line 49
    check-cast v7, Ljava/lang/Boolean;

    .line 51
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    move-result v7

    .line 55
    move-object/from16 v8, p8

    .line 57
    check-cast v8, Ljava/lang/Boolean;

    .line 59
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    move-result v8

    .line 63
    move-object/from16 v9, p9

    .line 65
    check-cast v9, Ljava/lang/Integer;

    .line 67
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v9

    .line 71
    move-object/from16 v10, p10

    .line 73
    check-cast v10, Ljava/lang/Integer;

    .line 75
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result v10

    .line 79
    move-object/from16 v11, p11

    .line 81
    check-cast v11, Ljava/lang/Integer;

    .line 83
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 86
    move-result v11

    .line 87
    move-object p0, v0

    .line 88
    move-object/from16 p1, v1

    .line 90
    move/from16 p2, v2

    .line 92
    move-object/from16 p3, v3

    .line 94
    move/from16 p4, v4

    .line 96
    move/from16 p5, v5

    .line 98
    move-object/from16 p6, v6

    .line 100
    move/from16 p7, v7

    .line 102
    move/from16 p8, v8

    .line 104
    move/from16 p9, v9

    .line 106
    move/from16 p10, v10

    .line 108
    move/from16 p11, v11

    .line 110
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    .line 113
    move-result-object v0

    .line 114
    return-object v0

    .line 115
    :pswitch_0
    check-cast v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 117
    move-object/from16 v2, p1

    .line 119
    check-cast v2, Landroid/os/IBinder;

    .line 121
    move-object/from16 v1, p2

    .line 123
    check-cast v1, Ljava/lang/Integer;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result v3

    .line 129
    move-object/from16 v4, p3

    .line 131
    check-cast v4, Landroid/content/AttributionSource;

    .line 133
    move-object/from16 v1, p4

    .line 135
    check-cast v1, Ljava/lang/Boolean;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    move-result v5

    .line 141
    move-object/from16 v1, p5

    .line 143
    check-cast v1, Ljava/lang/Boolean;

    .line 145
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    move-result v6

    .line 149
    move-object/from16 v7, p6

    .line 151
    check-cast v7, Ljava/lang/String;

    .line 153
    move-object/from16 v1, p7

    .line 155
    check-cast v1, Ljava/lang/Boolean;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 160
    move-result v8

    .line 161
    move-object/from16 v1, p8

    .line 163
    check-cast v1, Ljava/lang/Boolean;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 168
    move-result v9

    .line 169
    move-object/from16 v1, p9

    .line 171
    check-cast v1, Ljava/lang/Integer;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 176
    move-result v10

    .line 177
    move-object/from16 v1, p10

    .line 179
    check-cast v1, Ljava/lang/Integer;

    .line 181
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 184
    move-result v11

    .line 185
    move-object/from16 v1, p11

    .line 187
    check-cast v1, Ljava/lang/Integer;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 192
    move-result v12

    .line 193
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 195
    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;

    .line 197
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 199
    const/4 v14, 0x1

    .line 200
    invoke-direct {v13, v14, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 203
    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    .line 206
    move-result-object v0

    .line 207
    return-object v0

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
