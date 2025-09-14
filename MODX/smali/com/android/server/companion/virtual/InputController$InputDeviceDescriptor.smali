.class final Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mCreationOrderNumber:J

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDisplayId:I

.field public final mInputDeviceId:I

.field public final mName:Ljava/lang/String;

.field public final mPhys:Ljava/lang/String;

.field public final mPtr:J

.field public final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    const-wide/16 v1, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 8
    sput-object v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    return-void
.end method

.method public constructor <init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 6
    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 8
    iput p4, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    .line 10
    iput p5, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    .line 12
    iput-object p6, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mName:Ljava/lang/String;

    .line 16
    iput p8, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mInputDeviceId:I

    .line 18
    sget-object p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 23
    move-result-wide p1

    .line 24
    iput-wide p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    .line 26
    return-void
.end method
