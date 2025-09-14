.class public final Lcom/android/server/lights/LightsService$2;
.super Lcom/android/server/lights/LightsManager;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getLight(I)Lcom/android/server/lights/LightsService$LightImpl;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    array-length v0, p0

    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    aget-object p0, p0, p1

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method
