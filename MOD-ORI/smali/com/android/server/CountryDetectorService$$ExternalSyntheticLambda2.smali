.class public final synthetic Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/CountryDetectorService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/CountryDetectorService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 8
    .line 9
    return-void
.end method
