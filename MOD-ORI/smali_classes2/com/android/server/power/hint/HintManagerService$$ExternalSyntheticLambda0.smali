.class public final synthetic Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/hint/HintManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    const/16 v0, 0x27bd

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const-string p1, "debug.sf.enable_adpf_cpu_hint"

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const-string v1, "debug.hwui.use_hint_manager"

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZ)Landroid/util/StatsEvent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return p0
.end method
