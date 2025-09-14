.class public final synthetic Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceExt;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda8;->f$1:I

    .line 4
    .line 5
    check-cast p1, Landroid/content/om/OverlayInfoExt;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v1, p1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p1, p1, Landroid/content/om/OverlayInfoExt;->configFlags:I

    .line 18
    .line 19
    invoke-virtual {v0, p1, p0}, Lcom/android/server/om/OverlayManagerServiceExt;->getUserIds(II)[I

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/util/List;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 43
    :goto_1
    return-object p0
.end method
