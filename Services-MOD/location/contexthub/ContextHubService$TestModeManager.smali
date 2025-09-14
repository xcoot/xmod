.class public final Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRandom:Ljava/util/Random;

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 6
    new-instance p1, Ljava/util/Random;

    .line 8
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;->mRandom:Ljava/util/Random;

    .line 13
    return-void
.end method
