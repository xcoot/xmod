.class public abstract Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/FreecessHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/am/FreecessHandler;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, v0, Lcom/android/server/am/FreecessHandler;->lastDelayedTime:J

    .line 10
    sput-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 12
    return-void
.end method
