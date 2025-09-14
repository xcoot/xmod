.class public final Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDumpSize:J

.field public final mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;


# direct methods
.method public constructor <init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    .line 7
    .line 8
    return-void
.end method
