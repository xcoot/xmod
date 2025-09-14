.class public final Lcom/android/server/audio/AudioService$AudioDeviceArray;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceAddresses:[Ljava/lang/String;

.field public final mDeviceTypes:[I


# direct methods
.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceAddresses:[Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
