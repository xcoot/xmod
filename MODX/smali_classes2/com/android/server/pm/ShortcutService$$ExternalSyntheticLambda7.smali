.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/ShortcutService;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$1:J

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$1:J

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "shortcutHandleUnlockUser"

    .line 11
    .line 12
    .line 13
    const-wide/32 v4, 0x80000

    .line 14
    .line 15
    .line 16
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v3

    .line 22
    const/16 v6, 0xf

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 28
    .line 29
    .line 30
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method
