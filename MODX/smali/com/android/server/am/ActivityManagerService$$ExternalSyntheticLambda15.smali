.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 10
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v9

    .line 27
    const/4 v2, 0x0

    .line 28
    move v10, v2

    .line 29
    :goto_0
    if-ge v10, v9, :cond_0

    .line 31
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 37
    const/4 v8, 0x1

    .line 38
    const/16 v3, 0xd

    .line 40
    const/16 v4, 0xc

    .line 42
    const/4 v7, 0x1

    .line 43
    move-object v5, p0

    .line 44
    move-object v6, p0

    .line 45
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 48
    add-int/lit8 v10, v10, 0x1

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    return-void

    .line 58
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    throw p0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 65
    check-cast v0, Landroid/os/DropBoxManager;

    .line 67
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    .line 69
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    .line 71
    check-cast p0, Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
