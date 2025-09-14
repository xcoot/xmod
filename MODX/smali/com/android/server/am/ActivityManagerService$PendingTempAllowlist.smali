.class public final Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final callingUid:I

.field public final duration:J

.field public final reasonCode:I

.field public final tag:Ljava/lang/String;

.field public final targetUid:I

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    .line 6
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    .line 12
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    .line 14
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    .line 16
    return-void
.end method
