.class public final Lcom/android/server/timedetector/TimeDetectorInternalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorInternal;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 10
    .line 11
    return-void
.end method
