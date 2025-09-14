.class public final synthetic Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getSystemMinAspectRatio(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
