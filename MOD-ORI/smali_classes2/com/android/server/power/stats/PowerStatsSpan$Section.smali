.class public abstract Lcom/android/server/power/stats/PowerStatsSpan$Section;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract write(Lcom/android/modules/utils/TypedXmlSerializer;)V
.end method
