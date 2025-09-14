.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "mDefaultEnabled="

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-boolean v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 18
    .line 19
    .line 20
    const-string v0, ", mShouldIgnoreLandscapeRequest="

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 26
    .line 27
    iget-boolean v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 33
    .line 34
    .line 35
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo p2, "mRotationCompatPolicy="

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 49
    .line 50
    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    if-eq p0, p2, :cond_1

    .line 56
    .line 57
    const/4 p2, 0x2

    .line 58
    if-eq p0, p2, :cond_0

    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string p0, "AUTO"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string p0, "ALWAYS_ENABLED"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string p0, "ALWAYS_DISABLED"

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p0
.end method

.method public final executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "OrientationPolicy"

    .line 2
    .line 3
    return-object p0
.end method
