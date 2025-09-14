.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
