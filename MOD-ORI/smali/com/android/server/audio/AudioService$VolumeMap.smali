.class public final Lcom/android/server/audio/AudioService$VolumeMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final lowerStep:S

.field public final raiseStep:S


# direct methods
.method public constructor <init>(SS)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-short p2, p0, Lcom/android/server/audio/AudioService$VolumeMap;->raiseStep:S

    .line 5
    .line 6
    iput-short p1, p0, Lcom/android/server/audio/AudioService$VolumeMap;->lowerStep:S

    .line 7
    .line 8
    return-void
.end method
