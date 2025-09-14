.class public final synthetic Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/NanoAppFilter;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/location/NanoAppFilter;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/location/NanoAppFilter;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    .line 5
    check-cast p1, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 7
    invoke-virtual {v0, p1}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-void
.end method
