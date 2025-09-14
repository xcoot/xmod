.class public final synthetic Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;ILjava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 13
    .line 14
    new-instance v3, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserOrSystemMinAspectRatio(ILjava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const v1, 0x3fe38e39

    .line 33
    .line 34
    .line 35
    cmpl-float v1, v0, v1

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const v1, 0x3faaaaab

    .line 42
    .line 43
    .line 44
    cmpl-float v0, v0, v1

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x1

    .line 51
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void
.end method
