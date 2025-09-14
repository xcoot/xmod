.class public final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;
.super Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getDeviceIdsForUid(I)[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance p1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-direct {p1, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final getDevicePolicy(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDevicePolicy(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
