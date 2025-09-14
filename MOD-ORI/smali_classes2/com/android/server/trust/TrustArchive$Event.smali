.class public final Lcom/android/server/trust/TrustArchive$Event;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final agent:Landroid/content/ComponentName;

.field public final duration:J

.field public final elapsedTimestamp:J

.field public final flags:I

.field public final managingTrust:Z

.field public final message:Ljava/lang/String;

.field public final type:I

.field public final userId:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    .line 15
    .line 16
    iput-object p4, p0, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    .line 17
    .line 18
    iput-wide p5, p0, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 19
    .line 20
    iput p7, p0, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    .line 21
    .line 22
    iput-boolean p8, p0, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    .line 23
    .line 24
    return-void
.end method
