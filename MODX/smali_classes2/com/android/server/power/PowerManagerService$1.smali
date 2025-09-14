.class public final Lcom/android/server/power/PowerManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAbuseWakeLockAdded(Ljava/util/List;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "abuse wakelock package : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, ", "

    .line 9
    .line 10
    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "PowerManagerService"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-direct {v1, v2, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 50
    .line 51
    .line 52
    iget p0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 53
    .line 54
    or-int/lit8 p0, p0, 0x1

    .line 55
    .line 56
    iput p0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 57
    .line 58
    return-void
.end method
