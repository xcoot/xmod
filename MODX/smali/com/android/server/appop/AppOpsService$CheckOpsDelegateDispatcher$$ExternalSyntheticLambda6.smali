.class public final synthetic Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/DodecFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 5
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 10
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 12
    move-object/from16 v1, p1

    .line 14
    check-cast v1, Landroid/os/IBinder;

    .line 16
    move-object/from16 v2, p2

    .line 18
    check-cast v2, Ljava/lang/Integer;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v2

    .line 24
    move-object/from16 v3, p3

    .line 26
    check-cast v3, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v3

    .line 32
    move-object/from16 v4, p4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 36
    move-object/from16 v5, p5

    .line 38
    check-cast v5, Ljava/lang/String;

    .line 40
    move-object/from16 v6, p6

    .line 42
    check-cast v6, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v6

    .line 48
    move-object/from16 v7, p7

    .line 50
    check-cast v7, Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    move-result v7

    .line 56
    move-object/from16 v8, p8

    .line 58
    check-cast v8, Ljava/lang/Boolean;

    .line 60
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    move-result v8

    .line 64
    move-object/from16 v9, p9

    .line 66
    check-cast v9, Ljava/lang/String;

    .line 68
    move-object/from16 v10, p10

    .line 70
    check-cast v10, Ljava/lang/Boolean;

    .line 72
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    move-result v10

    .line 76
    move-object/from16 v11, p11

    .line 78
    check-cast v11, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result v11

    .line 84
    move-object/from16 v12, p12

    .line 86
    check-cast v12, Ljava/lang/Integer;

    .line 88
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result v12

    .line 92
    move-object/from16 p0, v0

    .line 94
    move-object/from16 p1, v1

    .line 96
    move/from16 p2, v2

    .line 98
    move/from16 p3, v3

    .line 100
    move-object/from16 p4, v4

    .line 102
    move-object/from16 p5, v5

    .line 104
    move/from16 p6, v6

    .line 106
    move/from16 p7, v7

    .line 108
    move/from16 p8, v8

    .line 110
    move-object/from16 p9, v9

    .line 112
    move/from16 p10, v10

    .line 114
    move/from16 p11, v11

    .line 116
    move/from16 p12, v12

    .line 118
    invoke-static/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :pswitch_0
    check-cast v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 125
    move-object/from16 v2, p1

    .line 127
    check-cast v2, Landroid/os/IBinder;

    .line 129
    move-object/from16 v1, p2

    .line 131
    check-cast v1, Ljava/lang/Integer;

    .line 133
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 136
    move-result v3

    .line 137
    move-object/from16 v1, p3

    .line 139
    check-cast v1, Ljava/lang/Integer;

    .line 141
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 144
    move-result v4

    .line 145
    move-object/from16 v5, p4

    .line 147
    check-cast v5, Ljava/lang/String;

    .line 149
    move-object/from16 v6, p5

    .line 151
    check-cast v6, Ljava/lang/String;

    .line 153
    move-object/from16 v1, p6

    .line 155
    check-cast v1, Ljava/lang/Integer;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 160
    move-result v7

    .line 161
    move-object/from16 v1, p7

    .line 163
    check-cast v1, Ljava/lang/Boolean;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 168
    move-result v8

    .line 169
    move-object/from16 v1, p8

    .line 171
    check-cast v1, Ljava/lang/Boolean;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    move-result v9

    .line 177
    move-object/from16 v10, p9

    .line 179
    check-cast v10, Ljava/lang/String;

    .line 181
    move-object/from16 v1, p10

    .line 183
    check-cast v1, Ljava/lang/Boolean;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    move-result v11

    .line 189
    move-object/from16 v1, p11

    .line 191
    check-cast v1, Ljava/lang/Integer;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 196
    move-result v12

    .line 197
    move-object/from16 v1, p12

    .line 199
    check-cast v1, Ljava/lang/Integer;

    .line 201
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 204
    move-result v13

    .line 205
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 207
    new-instance v14, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;

    .line 209
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 211
    const/4 v15, 0x1

    .line 212
    invoke-direct {v14, v15, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 215
    invoke-interface/range {v1 .. v14}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;

    .line 218
    move-result-object v0

    .line 219
    return-object v0

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
