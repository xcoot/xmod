.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p0, ","

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda2;

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {p1, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 24
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
