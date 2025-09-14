.class public final Lcom/android/server/utils/EventLogger$StringEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mDescription:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
