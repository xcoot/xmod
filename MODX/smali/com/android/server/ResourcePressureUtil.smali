.class public abstract Lcom/android/server/ResourcePressureUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PSI_FILES:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "/proc/pressure/cpu"

    .line 3
    const-string v1, "/proc/pressure/io"

    .line 5
    const-string v2, "/proc/pressure/memory"

    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/ResourcePressureUtil;->PSI_FILES:Ljava/util/List;

    .line 17
    return-void
.end method

.method public static currentPsiState()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/StringWriter;

    .line 7
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 10
    :try_start_0
    sget-object v2, Lcom/android/server/ResourcePressureUtil;->PSI_FILES:Ljava/util/List;

    .line 12
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Lcom/android/server/ResourcePressureUtil$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Lcom/android/server/ResourcePressureUtil$$ExternalSyntheticLambda1;

    .line 27
    invoke-direct {v3, v1}, Lcom/android/server/ResourcePressureUtil$$ExternalSyntheticLambda1;-><init>(Ljava/io/StringWriter;)V

    .line 30
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 36
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_0

    .line 46
    const-string v1, "\n"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    :cond_0
    return-object v0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 57
    throw v1
.end method
