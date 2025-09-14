.class public final synthetic Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/w3c/dom/NodeList;


# direct methods
.method public synthetic constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;->f$0:Lorg/w3c/dom/NodeList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;->f$0:Lorg/w3c/dom/NodeList;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
