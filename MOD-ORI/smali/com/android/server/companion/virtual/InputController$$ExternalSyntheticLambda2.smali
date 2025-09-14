.class public final synthetic Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isValidThread()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    xor-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    return p0
.end method
