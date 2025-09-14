.class public final Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mData:Ljava/util/ArrayDeque;

.field public mEventsLogged:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mEventsLogged:I

    .line 15
    .line 16
    return-void
.end method
