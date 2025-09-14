.class public interface abstract Lcom/android/server/backup/internal/OnTaskFinishedListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;

    .line 8
    return-void
.end method


# virtual methods
.method public abstract onFinished(Ljava/lang/String;)V
.end method
