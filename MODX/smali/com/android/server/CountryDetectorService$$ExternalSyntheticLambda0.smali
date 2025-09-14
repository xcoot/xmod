.class public final synthetic Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/location/CountryListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CountryDetectorService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCountryDetected(Landroid/location/Country;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CountryDetectorService;

    .line 3
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/CountryDetectorService;Ljava/lang/Object;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method
