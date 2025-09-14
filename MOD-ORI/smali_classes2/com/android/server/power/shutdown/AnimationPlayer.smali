.class public abstract Lcom/android/server/power/shutdown/AnimationPlayer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/shutdown/PlayerInterface;


# instance fields
.field public final FILE_EXTENSION:Ljava/lang/String;

.field public final SHUTDOWN_MAIN_ANI_FILES:[Ljava/lang/String;

.field public final SHUTDOWN_MAIN_LOOP_FILE:Ljava/lang/String;

.field public final SHUTDOWN_SUB_ANI_FILES:[Ljava/lang/String;

.field public final SHUTDOWN_SUB_LOOP_FILE:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public hasSubResources:Z

.field public mainImageView:Landroid/widget/ImageView;

.field public final resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

.field public subDialog:Landroid/app/Presentation;

.field public subImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->FILE_EXTENSION:Ljava/lang/String;

    .line 10
    .line 11
    const-string/jumbo p1, "shutdown"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/android/server/power/shutdown/AnimationPlayer;->initAnimationFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_MAIN_ANI_FILES:[Ljava/lang/String;

    .line 19
    .line 20
    const-string/jumbo p1, "sub_shutdown"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/android/server/power/shutdown/AnimationPlayer;->initAnimationFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_SUB_ANI_FILES:[Ljava/lang/String;

    .line 28
    .line 29
    const-string/jumbo p1, "shutdownloop"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_MAIN_LOOP_FILE:Ljava/lang/String;

    .line 37
    .line 38
    const-string/jumbo p1, "sub_shutdownloop"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_SUB_LOOP_FILE:Ljava/lang/String;

    .line 46
    .line 47
    new-instance p1, Lcom/android/server/power/shutdown/ResourceManager;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/android/server/power/shutdown/ResourceManager;-><init>(Lcom/android/server/power/shutdown/AnimationPlayer;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 53
    .line 54
    return-void
.end method

.method public static initAnimationFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "before"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "after"

    .line 12
    .line 13
    invoke-static {p0, v2, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public abstract getMainAnimationWidthHeight()Landroid/util/Pair;
.end method

.method public abstract setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V
.end method
