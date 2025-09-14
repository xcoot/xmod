.class public final Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsProcessFrozen:Ljava/lang/Boolean;

.field public final mTimestamp:Ljava/time/ZonedDateTime;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/time/ZonedDateTime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->mIsProcessFrozen:Ljava/lang/Boolean;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->mTimestamp:Ljava/time/ZonedDateTime;

    .line 8
    return-void
.end method
