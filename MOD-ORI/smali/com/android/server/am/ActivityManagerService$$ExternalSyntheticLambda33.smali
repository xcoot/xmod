.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onHeavyHit(Ljava/util/List;IFJ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;

    .line 13
    .line 14
    const/4 v9, 0x2

    .line 15
    move-object v2, v1

    .line 16
    move-object/from16 v4, p1

    .line 17
    .line 18
    move/from16 v5, p2

    .line 19
    .line 20
    move/from16 v6, p3

    .line 21
    .line 22
    move-wide/from16 v7, p4

    .line 23
    .line 24
    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;IFJI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 32
    .line 33
    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 34
    .line 35
    new-instance v1, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;

    .line 36
    .line 37
    const/16 v17, 0x0

    .line 38
    .line 39
    move-object v10, v1

    .line 40
    move-object/from16 v12, p1

    .line 41
    .line 42
    move/from16 v13, p2

    .line 43
    .line 44
    move/from16 v14, p3

    .line 45
    .line 46
    move-wide/from16 v15, p4

    .line 47
    .line 48
    invoke-direct/range {v10 .. v17}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;IFJI)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 56
    .line 57
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 58
    .line 59
    new-instance v1, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;

    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    move-object v2, v1

    .line 63
    move-object/from16 v4, p1

    .line 64
    .line 65
    move/from16 v5, p2

    .line 66
    .line 67
    move/from16 v6, p3

    .line 68
    .line 69
    move-wide/from16 v7, p4

    .line 70
    .line 71
    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;IFJI)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
